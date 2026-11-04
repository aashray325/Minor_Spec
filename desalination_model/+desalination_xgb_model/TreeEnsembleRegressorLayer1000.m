classdef TreeEnsembleRegressorLayer1000 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
    end

    properties (State)
    end

    properties
        Vars
        NumDims
    end




    methods
        function this = TreeEnsembleRegressorLayer1000(name)
            this.Name = name;
            this.OutputNames = {'variable'};
        end

        function [variable] = predict(this, float_input)
            if isdlarray(float_input)
                float_input = stripdims(float_input);
            end
            float_inputNumDims = 2;
            float_input = desalination_xgb_model.ops.permuteInputVar(float_input, ['as-is'], 2);

            [variable, variableNumDims] = TreeEnsembleRegres_1Graph1000(this, float_input, float_inputNumDims, false);
            variable = desalination_xgb_model.ops.permuteOutputVar(variable, ['as-is'], 2);

            variable = dlarray(single(variable), repmat('U', 1, max(2, variableNumDims)));
        end

        function [variable] = forward(this, float_input)
            if isdlarray(float_input)
                float_input = stripdims(float_input);
            end
            float_inputNumDims = 2;
            float_input = desalination_xgb_model.ops.permuteInputVar(float_input, ['as-is'], 2);

            [variable, variableNumDims] = TreeEnsembleRegres_1Graph1000(this, float_input, float_inputNumDims, true);
            variable = desalination_xgb_model.ops.permuteOutputVar(variable, ['as-is'], 2);

            variable = dlarray(single(variable), repmat('U', 1, max(2, variableNumDims)));
        end

        function [variable, variableNumDims1016] = TreeEnsembleRegres_1Graph1000(this, float_input, float_inputNumDims, Training)

            % Execute the operators:
            % PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (TreeEnsembleRegressor):
            % "TreeEnsembleRegressor" has following attributes:
            % "base_values" of "FLOATS" type; Value stored in "this.Vars.TreeEnsembleRegressorbase_values1001"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressorbase_values1001".
            % "n_targets" of "INT" type; Value stored in "this.Vars.TreeEnsembleRegressorn_targets1002"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressorn_targets1002".
            % "nodes_falsenodeids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_falsenodeids1003"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_falsenodeids1003".
            % "nodes_featureids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_featureids1004"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_featureids1004".
            % "nodes_missing_value_tracks_true" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_missing_value_tracks_true1005"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_missing_value_tracks_true1005".
            % "nodes_modes" of "STRINGS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_modes1006"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_modes1006".
            % "nodes_nodeids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_nodeids1007"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_nodeids1007".
            % "nodes_treeids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_treeids1008"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_treeids1008".
            % "nodes_truenodeids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_truenodeids1009"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_truenodeids1009".
            % "nodes_values" of "FLOATS" type; Value stored in "this.Vars.TreeEnsembleRegressornodes_values1010"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressornodes_values1010".
            % "post_transform" of "STRING" type; Value stored in "this.Vars.TreeEnsembleRegressorpost_transform1011"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressorpost_transform1011".
            % "target_ids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressortarget_ids1012"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressortarget_ids1012".
            % "target_nodeids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressortarget_nodeids1013"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressortarget_nodeids1013".
            % "target_treeids" of "INTS" type; Value stored in "this.Vars.TreeEnsembleRegressortarget_treeids1014"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressortarget_treeids1014".
            % "target_weights" of "FLOATS" type; Value stored in "this.Vars.TreeEnsembleRegressortarget_weights1015"; Number of dimensions stored in "this.NumDims.TreeEnsembleRegressortarget_weights1015".
            [variable, variableNumDims] = desalination_xgb_model.ops.onnxTreeEnsembleRegressor(float_input, float_inputNumDims, this.Vars.TreeEnsembleRegressorbase_values1001, this.Vars.TreeEnsembleRegressorn_targets1002, this.Vars.TreeEnsembleRegressornodes_falsenodeids1003, this.Vars.TreeEnsembleRegressornodes_featureids1004, this.Vars.TreeEnsembleRegressornodes_missing_value_tracks_true1005, this.Vars.TreeEnsembleRegressornodes_modes1006, this.Vars.TreeEnsembleRegressornodes_nodeids1007, this.Vars.TreeEnsembleRegressornodes_treeids1008, this.Vars.TreeEnsembleRegressornodes_truenodeids1009, this.Vars.TreeEnsembleRegressornodes_values1010, this.Vars.TreeEnsembleRegressorpost_transform1011, this.Vars.TreeEnsembleRegressortarget_ids1012, this.Vars.TreeEnsembleRegressortarget_nodeids1013, this.Vars.TreeEnsembleRegressortarget_treeids1014, this.Vars.TreeEnsembleRegressortarget_weights1015, this.NumDims.TreeEnsembleRegressorbase_values1001, this.NumDims.TreeEnsembleRegressorn_targets1002, this.NumDims.TreeEnsembleRegressornodes_falsenodeids1003, this.NumDims.TreeEnsembleRegressornodes_featureids1004, this.NumDims.TreeEnsembleRegressornodes_missing_value_tracks_true1005, this.NumDims.TreeEnsembleRegressornodes_modes1006, this.NumDims.TreeEnsembleRegressornodes_nodeids1007, this.NumDims.TreeEnsembleRegressornodes_treeids1008, this.NumDims.TreeEnsembleRegressornodes_truenodeids1009, this.NumDims.TreeEnsembleRegressornodes_values1010, this.NumDims.TreeEnsembleRegressorpost_transform1011, this.NumDims.TreeEnsembleRegressortarget_ids1012, this.NumDims.TreeEnsembleRegressortarget_nodeids1013, this.NumDims.TreeEnsembleRegressortarget_treeids1014, this.NumDims.TreeEnsembleRegressortarget_weights1015);

            % Set graph output arguments
            variableNumDims1016 = variableNumDims;

        end

    end

end